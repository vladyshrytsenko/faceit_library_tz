package faceit.tz.service;

import faceit.tz.model.entity.Reader;
import faceit.tz.model.entity.User;
import faceit.tz.repository.ReaderRepository;
import javassist.NotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReaderService {

    private final ReaderRepository readerRepository;

    public ReaderService(ReaderRepository readerRepository) {
        this.readerRepository = readerRepository;
    }

    public Page<Reader> findAll(Pageable pageable) {
        return readerRepository.findAll(pageable);
    }

    public List<Reader> findAll() {
        return readerRepository.findAll();
    }

    public List<Reader> findByUser(User user) {
        return readerRepository.findByUser(user);
    }

    public Reader findById(Long id) throws NotFoundException {
        return readerRepository.findById(id).orElseThrow(() -> new NotFoundException("reader not exists"));
    }

    public void save(Reader reader) {
        readerRepository.save(reader);
    }

    public void deleteById(Long id)  {
        readerRepository.deleteById(id);
    }
}
